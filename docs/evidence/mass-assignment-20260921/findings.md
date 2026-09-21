# Mass assignment findings — local API evidence

Executed at **2026-09-21T04:55:51Z** against API **`d7f7a5b9c2d34ef279ac3a70bc58823def64005c`**.

**20/20 scenarios passed; 46 explicit checks; 0 failed checks; 0 execution errors.** No protected-field assignment vulnerability was observed in these cases.

Seven create/update routes were exercised with synthetic Student, Convenor, Tutor and anonymous callers. The Admin account served as a forged-owner/assessor target. These are actual JSON requests through the Rails/Grape stack using Rack::Test, including token authentication and database writes. They are not requests to a production HTTP server.

The database assertions distinguish silent ignoring of protected fields from explicit refusal. Students are intentionally allowed to choose their own target grade; they cannot award themselves a project or task assessment grade. Positive controls also confirm authorized user creation, enrolment, comment editing and tutor grading.

After rollback, synthetic fixture rows remaining: **0 users**, **0 units**.

See [README.md](README.md) for the parameter-declaration review, environment containment, reproduction, initial fixture correction, limitations and exact Planner attachment steps. [results.json](results.json) is the complete machine-readable evidence; [run_mass_assignment.rb](run_mass_assignment.rb) is the executed probe.

| Case | Role | Method and path | HTTP | Verdict | Protected-field finding |
| --- | --- | --- | --- | --- | --- |
| U01 | Student | `PUT /api/users/8` | 200 | PASS | Student own-profile update ignores raw role/admin/credential/identity fields |
| U02 | Student | `PUT /api/users/9` | 403 | PASS | Student cannot update a different profile or select its owner through nested id |
| U03 | Student | `PUT /api/users/8` | 422 | PASS | Student cannot overwrite own managed student id |
| U04 | Student | `POST /api/users` | 403 | PASS | Student cannot create users, even with role/admin injection |
| U05 | Convenor | `POST /api/users` | 201 | PASS | Convenor may create Student; raw role/admin/credential fields cannot override declared role |
| U06 | Convenor | `POST /api/users` | 403 | PASS | Convenor cannot create declared Admin role |
| P01 | Student | `POST /api/projects` | 403 | PASS | Student cannot create enrolment/project through protected-field injection |
| P02 | Convenor | `POST /api/projects` | 201 | PASS | Authorised enrolment ignores undeclared grade/owner/extension fields |
| P03 | Student | `PUT /api/projects/4` | 200 | PASS | Student target_grade is allowed; companion assessed grade/owner fields are ignored |
| P04 | Student | `PUT /api/projects/4` | 403 | PASS | Student cannot write assessed project grade |
| P05 | Student | `PUT /api/projects/4` | 403 | PASS | Student cannot change own enrolment status |
| P06 | Student | `PUT /api/projects/5` | 403 | PASS | Student cannot change another student target grade |
| T01 | Student | `PUT /api/projects/4/task_def_id/2` | 403 | PASS | Student grade with submission trigger rejected before task/submission mutation |
| T02 | Student | `PUT /api/projects/4/task_def_id/2` | 200 | PASS | Valid student submission ignores nested grade, raw status/assessor and quality injection |
| T03 | Student | `PUT /api/projects/4/task_def_id/2` | 200 | PASS | Raw model attributes cannot assign task completion or grade |
| T04 | Tutor | `PUT /api/projects/4/task_def_id/2` | 200 | PASS | Positive control: employed tutor can set task grade |
| C01 | Student | `POST /api/projects/4/task_def_id/2/comments` | 201 | PASS | Comment creation ignores forged author, target, subtype and assessment fields |
| C02 | Student | `PUT /api/projects/4/task_def_id/2/comments/7` | 200 | PASS | Own comment editing ignores forged author/subtype/assessment fields |
| C03 | Student | `PUT /api/projects/4/task_def_id/2/comments/8` | 403 | PASS | Student cannot edit tutor comment by forging author id |
| A01 | none | `PUT /api/users/8` | 419 | PASS | Anonymous profile write rejected before protected fields are considered |

## Recorded requests, responses and persisted-state checks

Authentication tokens are redacted. All shown names, email addresses, identifiers and injected credential strings are synthetic. The response bodies below are the observed API payloads, not predicted examples.

### U01 — Student own-profile update ignores raw role/admin/credential/identity fields

**Verdict: PASS.**

Request:

```json
{
  "method": "PUT",
  "path": "/api/users/8",
  "actor": "ma-student",
  "system_role": "Student",
  "headers": {
    "Content-Type": "application/json",
    "username": "ma-student",
    "auth_token": "[REDACTED local synthetic token]"
  },
  "body": {
    "role_id": 4,
    "admin": true,
    "user": {
      "nickname": "Allowed nickname",
      "system_role": "Admin",
      "role_id": 4,
      "role": "Admin",
      "admin": true,
      "is_admin": true,
      "username": "ma-forged-admin",
      "login_id": "ma-forged-login",
      "encrypted_password": "forged-password-hash"
    }
  }
}
```

Response:

```json
{
  "status": 200,
  "content_type": "application/json",
  "body": {
    "id": 8,
    "student_id": "9100001",
    "email": "ma-student@example.invalid",
    "first_name": "Synthetic",
    "last_name": "student",
    "username": "ma-student",
    "nickname": "Allowed nickname",
    "display_name": "Allowed nickname student",
    "receive_task_notifications": true,
    "receive_portfolio_notifications": true,
    "receive_feedback_notifications": true,
    "display_peer_progress": true,
    "opt_in_to_research": null,
    "has_run_first_time_setup": false,
    "theme_preference": null,
    "theme_preference_updated_at": null,
    "institutional_identity_managed": false,
    "email_editable": true,
    "system_role": "Student"
  }
}
```

Reloaded database and HTTP checks:

```json
[
  {
    "label": "HTTP",
    "expected": 200,
    "actual": 200,
    "pass": true
  },
  {
    "label": "Allowed nickname saved; protected identity and role unchanged",
    "expected": {
      "id": 8,
      "username": "ma-student",
      "login_id": null,
      "role_id": 1,
      "student_id": "9100001",
      "first_name": "Synthetic",
      "nickname": "Allowed nickname"
    },
    "actual": {
      "id": 8,
      "username": "ma-student",
      "login_id": null,
      "role_id": 1,
      "student_id": "9100001",
      "first_name": "Synthetic",
      "nickname": "Allowed nickname"
    },
    "pass": true
  },
  {
    "label": "Password hash unchanged (hash not disclosed)",
    "expected": true,
    "actual": true,
    "pass": true
  }
]
```

### U02 — Student cannot update a different profile or select its owner through nested id

**Verdict: PASS.**

Request:

```json
{
  "method": "PUT",
  "path": "/api/users/9",
  "actor": "ma-student",
  "system_role": "Student",
  "headers": {
    "Content-Type": "application/json",
    "username": "ma-student",
    "auth_token": "[REDACTED local synthetic token]"
  },
  "body": {
    "user": {
      "id": 8,
      "nickname": "Forged profile",
      "system_role": "Admin",
      "role_id": 4
    }
  }
}
```

Response:

```json
{
  "status": 403,
  "content_type": "application/json",
  "body": {
    "error": "Cannot modify user with id=9 - not authorised"
  }
}
```

Reloaded database and HTTP checks:

```json
[
  {
    "label": "HTTP",
    "expected": 403,
    "actual": 403,
    "pass": true
  },
  {
    "label": "Other profile unchanged",
    "expected": {
      "id": 9,
      "username": "ma-other-student",
      "login_id": null,
      "role_id": 1,
      "student_id": "9100002",
      "first_name": "Synthetic",
      "nickname": "other-student"
    },
    "actual": {
      "id": 9,
      "username": "ma-other-student",
      "login_id": null,
      "role_id": 1,
      "student_id": "9100002",
      "first_name": "Synthetic",
      "nickname": "other-student"
    },
    "pass": true
  }
]
```

### U03 — Student cannot overwrite own managed student id

**Verdict: PASS.**

Request:

```json
{
  "method": "PUT",
  "path": "/api/users/8",
  "actor": "ma-student",
  "system_role": "Student",
  "headers": {
    "Content-Type": "application/json",
    "username": "ma-student",
    "auth_token": "[REDACTED local synthetic token]"
  },
  "body": {
    "user": {
      "nickname": "Must not save",
      "student_id": "9999999"
    }
  }
}
```

Response:

```json
{
  "status": 422,
  "content_type": "application/json",
  "body": {
    "error": "Student ID is managed account information and cannot be changed here."
  }
}
```

Reloaded database and HTTP checks:

```json
[
  {
    "label": "HTTP",
    "expected": 422,
    "actual": 422,
    "pass": true
  },
  {
    "label": "Identity and allowed-field companion unchanged on rejection",
    "expected": {
      "id": 8,
      "username": "ma-student",
      "login_id": null,
      "role_id": 1,
      "student_id": "9100001",
      "first_name": "Synthetic",
      "nickname": "student"
    },
    "actual": {
      "id": 8,
      "username": "ma-student",
      "login_id": null,
      "role_id": 1,
      "student_id": "9100001",
      "first_name": "Synthetic",
      "nickname": "student"
    },
    "pass": true
  }
]
```

### U04 — Student cannot create users, even with role/admin injection

**Verdict: PASS.**

Request:

```json
{
  "method": "POST",
  "path": "/api/users",
  "actor": "ma-student",
  "system_role": "Student",
  "headers": {
    "Content-Type": "application/json",
    "username": "ma-student",
    "auth_token": "[REDACTED local synthetic token]"
  },
  "body": {
    "user": {
      "first_name": "Synthetic",
      "last_name": "Created",
      "email": "ma-created@example.invalid",
      "username": "ma-created",
      "nickname": "Created",
      "system_role": "Admin",
      "role_id": 4,
      "admin": true,
      "is_admin": true,
      "encrypted_password": "forged-password-hash",
      "login_id": "forged-login"
    }
  }
}
```

Response:

```json
{
  "status": 403,
  "content_type": "application/json",
  "body": {
    "error": "Not authorised to create new users"
  }
}
```

Reloaded database and HTTP checks:

```json
[
  {
    "label": "HTTP",
    "expected": 403,
    "actual": 403,
    "pass": true
  },
  {
    "label": "No user created",
    "expected": 6,
    "actual": 6,
    "pass": true
  }
]
```

### U05 — Convenor may create Student; raw role/admin/credential fields cannot override declared role

**Verdict: PASS.**

Request:

```json
{
  "method": "POST",
  "path": "/api/users",
  "actor": "ma-convenor",
  "system_role": "Convenor",
  "headers": {
    "Content-Type": "application/json",
    "username": "ma-convenor",
    "auth_token": "[REDACTED local synthetic token]"
  },
  "body": {
    "user": {
      "first_name": "Synthetic",
      "last_name": "Created",
      "email": "ma-created@example.invalid",
      "username": "ma-created",
      "nickname": "Created",
      "system_role": "Student",
      "role_id": 4,
      "admin": true,
      "is_admin": true,
      "encrypted_password": "forged-password-hash",
      "login_id": "forged-login"
    }
  }
}
```

Response:

```json
{
  "status": 201,
  "content_type": "application/json",
  "body": {
    "id": 14,
    "student_id": null,
    "email": "ma-created@example.invalid",
    "first_name": "Synthetic",
    "last_name": "Created",
    "username": "ma-created",
    "nickname": "Created",
    "display_name": "Created Created",
    "receive_task_notifications": true,
    "receive_portfolio_notifications": true,
    "receive_feedback_notifications": true,
    "display_peer_progress": true,
    "opt_in_to_research": null,
    "has_run_first_time_setup": false,
    "institutional_identity_managed": false,
    "email_editable": true,
    "system_role": "Student"
  }
}
```

Reloaded database and HTTP checks:

```json
[
  {
    "label": "HTTP",
    "expected": 201,
    "actual": 201,
    "pass": true
  },
  {
    "label": "Created requested Student",
    "expected": 1,
    "actual": 1,
    "pass": true
  },
  {
    "label": "Protected login id ignored",
    "expected": null,
    "actual": null,
    "pass": true
  },
  {
    "label": "Forged password hash ignored",
    "expected": false,
    "actual": false,
    "pass": true
  }
]
```

### U06 — Convenor cannot create declared Admin role

**Verdict: PASS.**

Request:

```json
{
  "method": "POST",
  "path": "/api/users",
  "actor": "ma-convenor",
  "system_role": "Convenor",
  "headers": {
    "Content-Type": "application/json",
    "username": "ma-convenor",
    "auth_token": "[REDACTED local synthetic token]"
  },
  "body": {
    "user": {
      "first_name": "Synthetic",
      "last_name": "Created",
      "email": "ma-created@example.invalid",
      "username": "ma-created",
      "nickname": "Created",
      "system_role": "Admin",
      "role_id": 4,
      "admin": true,
      "is_admin": true,
      "encrypted_password": "forged-password-hash",
      "login_id": "forged-login"
    }
  }
}
```

Response:

```json
{
  "status": 403,
  "content_type": "application/json",
  "body": {
    "error": "Not authorised to create new users with role Admin"
  }
}
```

Reloaded database and HTTP checks:

```json
[
  {
    "label": "HTTP",
    "expected": 403,
    "actual": 403,
    "pass": true
  },
  {
    "label": "No user created",
    "expected": 6,
    "actual": 6,
    "pass": true
  }
]
```

### P01 — Student cannot create enrolment/project through protected-field injection

**Verdict: PASS.**

Request:

```json
{
  "method": "POST",
  "path": "/api/projects",
  "actor": "ma-student",
  "system_role": "Student",
  "headers": {
    "Content-Type": "application/json",
    "username": "ma-student",
    "auth_token": "[REDACTED local synthetic token]"
  },
  "body": {
    "unit_id": 2,
    "student_num": "ma-new-student",
    "campus_id": 2,
    "target_grade": 3,
    "grade": 3,
    "submitted_grade": 3,
    "assessor_id": 8,
    "user_id": 13,
    "enrolled": false,
    "spec_con_days": 100,
    "project": {
      "grade": 3,
      "target_grade": 3,
      "user_id": 13
    }
  }
}
```

Response:

```json
{
  "status": 403,
  "content_type": "application/json",
  "body": {
    "error": "Couldn't find Unit with id=2"
  }
}
```

Reloaded database and HTTP checks:

```json
[
  {
    "label": "HTTP",
    "expected": 403,
    "actual": 403,
    "pass": true
  },
  {
    "label": "No project created",
    "expected": 2,
    "actual": 2,
    "pass": true
  }
]
```

### P02 — Authorised enrolment ignores undeclared grade/owner/extension fields

**Verdict: PASS.**

Request:

```json
{
  "method": "POST",
  "path": "/api/projects",
  "actor": "ma-convenor",
  "system_role": "Convenor",
  "headers": {
    "Content-Type": "application/json",
    "username": "ma-convenor",
    "auth_token": "[REDACTED local synthetic token]"
  },
  "body": {
    "unit_id": 2,
    "student_num": "ma-new-student",
    "campus_id": 2,
    "target_grade": 3,
    "grade": 3,
    "submitted_grade": 3,
    "assessor_id": 8,
    "user_id": 13,
    "enrolled": false,
    "spec_con_days": 100,
    "project": {
      "grade": 3,
      "target_grade": 3,
      "user_id": 13
    }
  }
}
```

Response:

```json
{
  "status": 201,
  "content_type": "application/json",
  "body": {
    "id": 6,
    "enrolled": true,
    "student": {
      "id": 10,
      "student_id": "9100003",
      "username": "ma-new-student",
      "email": "ma-new-student@example.invalid",
      "first_name": "Synthetic",
      "last_name": "new-student",
      "nickname": "new-student"
    },
    "target_grade": 0,
    "campus_id": 2,
    "compile_portfolio": false,
    "grade": 0,
    "grade_rationale": null,
    "similarity_flag": false,
    "has_portfolio": false,
    "stats": {
      "red_pct": 0,
      "grey_pct": 1,
      "orange_pct": 0,
      "blue_pct": 0,
      "green_pct": 0,
      "order_scale": 0
    }
  }
}
```

Reloaded database and HTTP checks:

```json
[
  {
    "label": "HTTP",
    "expected": 201,
    "actual": 201,
    "pass": true
  },
  {
    "label": "Server-owned defaults and correct selected student",
    "expected": {
      "user_id": 10,
      "unit_id": 2,
      "target_grade": 0,
      "submitted_grade": null,
      "grade": 0,
      "grade_rationale": null,
      "assessor_id": null,
      "enrolled": true,
      "spec_con_days": 0
    },
    "actual": {
      "user_id": 10,
      "unit_id": 2,
      "target_grade": 0,
      "submitted_grade": null,
      "grade": 0,
      "grade_rationale": null,
      "assessor_id": null,
      "enrolled": true,
      "spec_con_days": 0
    },
    "pass": true
  }
]
```

### P03 — Student target_grade is allowed; companion assessed grade/owner fields are ignored

**Verdict: PASS.**

Request:

```json
{
  "method": "PUT",
  "path": "/api/projects/4",
  "actor": "ma-student",
  "system_role": "Student",
  "headers": {
    "Content-Type": "application/json",
    "username": "ma-student",
    "auth_token": "[REDACTED local synthetic token]"
  },
  "body": {
    "target_grade": 1,
    "grade": 3,
    "grade_rationale": "Forged grade",
    "assessor_id": 8,
    "user_id": 13,
    "unit_id": 9999999,
    "spec_con_days": 100,
    "project": {
      "grade": 3,
      "target_grade": 3,
      "user_id": 13
    }
  }
}
```

Response:

```json
{
  "status": 200,
  "content_type": "application/json",
  "body": {
    "campus_id": 2,
    "target_grade": 1,
    "submitted_grade": null,
    "compile_portfolio": false,
    "portfolio_available": false,
    "uses_draft_learning_summary": false
  }
}
```

Reloaded database and HTTP checks:

```json
[
  {
    "label": "HTTP",
    "expected": 200,
    "actual": 200,
    "pass": true
  },
  {
    "label": "Only permitted own target grade changed",
    "expected": {
      "user_id": 8,
      "unit_id": 2,
      "target_grade": 1,
      "submitted_grade": null,
      "grade": 0,
      "grade_rationale": null,
      "assessor_id": null,
      "enrolled": true,
      "spec_con_days": 0
    },
    "actual": {
      "user_id": 8,
      "unit_id": 2,
      "target_grade": 1,
      "submitted_grade": null,
      "grade": 0,
      "grade_rationale": null,
      "assessor_id": null,
      "enrolled": true,
      "spec_con_days": 0
    },
    "pass": true
  }
]
```

### P04 — Student cannot write assessed project grade

**Verdict: PASS.**

Request:

```json
{
  "method": "PUT",
  "path": "/api/projects/4",
  "actor": "ma-student",
  "system_role": "Student",
  "headers": {
    "Content-Type": "application/json",
    "username": "ma-student",
    "auth_token": "[REDACTED local synthetic token]"
  },
  "body": {
    "grade": 3,
    "old_grade": 0,
    "grade_rationale": "Forged grade",
    "assessor_id": 8
  }
}
```

Response:

```json
{
  "status": 403,
  "content_type": "application/json",
  "body": {
    "error": "You do not have permissions to assess this student"
  }
}
```

Reloaded database and HTTP checks:

```json
[
  {
    "label": "HTTP",
    "expected": 403,
    "actual": 403,
    "pass": true
  },
  {
    "label": "Project assessment unchanged",
    "expected": {
      "user_id": 8,
      "unit_id": 2,
      "target_grade": 0,
      "submitted_grade": null,
      "grade": 0,
      "grade_rationale": null,
      "assessor_id": null,
      "enrolled": true,
      "spec_con_days": 0
    },
    "actual": {
      "user_id": 8,
      "unit_id": 2,
      "target_grade": 0,
      "submitted_grade": null,
      "grade": 0,
      "grade_rationale": null,
      "assessor_id": null,
      "enrolled": true,
      "spec_con_days": 0
    },
    "pass": true
  }
]
```

### P05 — Student cannot change own enrolment status

**Verdict: PASS.**

Request:

```json
{
  "method": "PUT",
  "path": "/api/projects/4",
  "actor": "ma-student",
  "system_role": "Student",
  "headers": {
    "Content-Type": "application/json",
    "username": "ma-student",
    "auth_token": "[REDACTED local synthetic token]"
  },
  "body": {
    "enrolled": false,
    "target_grade": 3
  }
}
```

Response:

```json
{
  "status": 403,
  "content_type": "application/json",
  "body": {
    "error": "You cannot change the enrolment for this student"
  }
}
```

Reloaded database and HTTP checks:

```json
[
  {
    "label": "HTTP",
    "expected": 403,
    "actual": 403,
    "pass": true
  },
  {
    "label": "Project unchanged",
    "expected": {
      "user_id": 8,
      "unit_id": 2,
      "target_grade": 0,
      "submitted_grade": null,
      "grade": 0,
      "grade_rationale": null,
      "assessor_id": null,
      "enrolled": true,
      "spec_con_days": 0
    },
    "actual": {
      "user_id": 8,
      "unit_id": 2,
      "target_grade": 0,
      "submitted_grade": null,
      "grade": 0,
      "grade_rationale": null,
      "assessor_id": null,
      "enrolled": true,
      "spec_con_days": 0
    },
    "pass": true
  }
]
```

### P06 — Student cannot change another student target grade

**Verdict: PASS.**

Request:

```json
{
  "method": "PUT",
  "path": "/api/projects/5",
  "actor": "ma-student",
  "system_role": "Student",
  "headers": {
    "Content-Type": "application/json",
    "username": "ma-student",
    "auth_token": "[REDACTED local synthetic token]"
  },
  "body": {
    "target_grade": 3,
    "user_id": 8
  }
}
```

Response:

```json
{
  "status": 403,
  "content_type": "application/json",
  "body": {
    "error": "You do not have permissions to change this student"
  }
}
```

Reloaded database and HTTP checks:

```json
[
  {
    "label": "HTTP",
    "expected": 403,
    "actual": 403,
    "pass": true
  },
  {
    "label": "Other project unchanged",
    "expected": {
      "user_id": 9,
      "unit_id": 2,
      "target_grade": 0,
      "submitted_grade": null,
      "grade": 0,
      "grade_rationale": null,
      "assessor_id": null,
      "enrolled": true,
      "spec_con_days": 0
    },
    "actual": {
      "user_id": 9,
      "unit_id": 2,
      "target_grade": 0,
      "submitted_grade": null,
      "grade": 0,
      "grade_rationale": null,
      "assessor_id": null,
      "enrolled": true,
      "spec_con_days": 0
    },
    "pass": true
  }
]
```

### T01 — Student grade with submission trigger rejected before task/submission mutation

**Verdict: PASS.**

Request:

```json
{
  "method": "PUT",
  "path": "/api/projects/4/task_def_id/2",
  "actor": "ma-student",
  "system_role": "Student",
  "headers": {
    "Content-Type": "application/json",
    "username": "ma-student",
    "auth_token": "[REDACTED local synthetic token]"
  },
  "body": {
    "trigger": "ready_for_feedback",
    "grade": 3,
    "quality_pts": 5
  }
}
```

Response:

```json
{
  "status": 403,
  "content_type": "application/json",
  "body": {
    "error": "You are not permitted to assess this task"
  }
}
```

Reloaded database and HTTP checks:

```json
[
  {
    "label": "HTTP",
    "expected": 403,
    "actual": 403,
    "pass": true
  },
  {
    "label": "Task assessment/status unchanged",
    "expected": {
      "project_id": 4,
      "task_definition_id": 2,
      "grade": null,
      "quality_pts": -1,
      "task_status_id": 1,
      "assessment_date": null,
      "submission_processing_user_id": null
    },
    "actual": {
      "project_id": 4,
      "task_definition_id": 2,
      "grade": null,
      "quality_pts": -1,
      "task_status_id": 1,
      "assessment_date": null,
      "submission_processing_user_id": null
    },
    "pass": true
  },
  {
    "label": "No submission created",
    "expected": 0,
    "actual": 0,
    "pass": true
  }
]
```

### T02 — Valid student submission ignores nested grade, raw status/assessor and quality injection

**Verdict: PASS.**

Request:

```json
{
  "method": "PUT",
  "path": "/api/projects/4/task_def_id/2",
  "actor": "ma-student",
  "system_role": "Student",
  "headers": {
    "Content-Type": "application/json",
    "username": "ma-student",
    "auth_token": "[REDACTED local synthetic token]"
  },
  "body": {
    "trigger": "ready_for_feedback",
    "quality_pts": 5,
    "task_status_id": 2,
    "project_id": 5,
    "assessment_date": "2099-01-01T00:00:00Z",
    "submission_processing_user_id": 13,
    "task": {
      "grade": 3,
      "task_status_id": 2,
      "quality_pts": 5,
      "project_id": 5
    }
  }
}
```

Response:

```json
{
  "status": 200,
  "content_type": "application/json",
  "body": {
    "id": 3,
    "project_id": 4,
    "task_definition_id": 2,
    "status": "ready_for_feedback",
    "due_date": "2026-09-28",
    "submission_date": "2026-09-21",
    "effective_deadline": "2026-09-28T23:59:59.000-12:00",
    "effective_deadline_reason": "standard_due_date",
    "effective_deadline_source_id": null,
    "effective_deadline_date": "2026-09-28",
    "extensions": 0,
    "scorm_extensions": 0,
    "times_assessed": 0,
    "quality_pts": -1,
    "include_in_portfolio": true,
    "new_stats": "{\"red_pct\":0.0,\"grey_pct\":0.0,\"orange_pct\":0.0,\"blue_pct\":1.0,\"green_pct\":0.0,\"order_scale\":100.0}"
  }
}
```

Reloaded database and HTTP checks:

```json
[
  {
    "label": "HTTP",
    "expected": 200,
    "actual": 200,
    "pass": true
  },
  {
    "label": "Only allowed submission state, no injected assessment fields",
    "expected": {
      "project_id": 4,
      "task_definition_id": 2,
      "grade": null,
      "quality_pts": -1,
      "task_status_id": 9,
      "assessment_date": null,
      "submission_processing_user_id": null
    },
    "actual": {
      "project_id": 4,
      "task_definition_id": 2,
      "grade": null,
      "quality_pts": -1,
      "task_status_id": 9,
      "assessment_date": null,
      "submission_processing_user_id": null
    },
    "pass": true
  }
]
```

### T03 — Raw model attributes cannot assign task completion or grade

**Verdict: PASS.**

Request:

```json
{
  "method": "PUT",
  "path": "/api/projects/4/task_def_id/2",
  "actor": "ma-student",
  "system_role": "Student",
  "headers": {
    "Content-Type": "application/json",
    "username": "ma-student",
    "auth_token": "[REDACTED local synthetic token]"
  },
  "body": {
    "include_in_portfolio": false,
    "task_status_id": 2,
    "quality_pts": 5,
    "task": {
      "grade": 3,
      "task_status_id": 2
    },
    "assessment_date": "2099-01-01T00:00:00Z"
  }
}
```

Response:

```json
{
  "status": 200,
  "content_type": "application/json",
  "body": {
    "id": 3,
    "project_id": 4,
    "task_definition_id": 2,
    "status": "not_started",
    "due_date": "2026-09-28",
    "effective_deadline": "2026-09-28T23:59:59.000-12:00",
    "effective_deadline_reason": "standard_due_date",
    "effective_deadline_source_id": null,
    "effective_deadline_date": "2026-09-28",
    "extensions": 0,
    "scorm_extensions": 0,
    "times_assessed": 0,
    "quality_pts": -1,
    "include_in_portfolio": false,
    "new_stats": "{red_pct: 0, grey_pct: 1, orange_pct: 0, blue_pct: 0, green_pct: 0, order_scale: 0}"
  }
}
```

Reloaded database and HTTP checks:

```json
[
  {
    "label": "HTTP",
    "expected": 200,
    "actual": 200,
    "pass": true
  },
  {
    "label": "Protected fields unchanged",
    "expected": {
      "project_id": 4,
      "task_definition_id": 2,
      "grade": null,
      "quality_pts": -1,
      "task_status_id": 1,
      "assessment_date": null,
      "submission_processing_user_id": null
    },
    "actual": {
      "project_id": 4,
      "task_definition_id": 2,
      "grade": null,
      "quality_pts": -1,
      "task_status_id": 1,
      "assessment_date": null,
      "submission_processing_user_id": null
    },
    "pass": true
  },
  {
    "label": "Allowed portfolio selection saved",
    "expected": false,
    "actual": false,
    "pass": true
  }
]
```

### T04 — Positive control: employed tutor can set task grade

**Verdict: PASS.**

Request:

```json
{
  "method": "PUT",
  "path": "/api/projects/4/task_def_id/2",
  "actor": "ma-tutor",
  "system_role": "Tutor",
  "headers": {
    "Content-Type": "application/json",
    "username": "ma-tutor",
    "auth_token": "[REDACTED local synthetic token]"
  },
  "body": {
    "grade": 3
  }
}
```

Response:

```json
{
  "status": 200,
  "content_type": "application/json",
  "body": {
    "id": 3,
    "project_id": 4,
    "task_definition_id": 2,
    "status": "not_started",
    "due_date": "2026-09-28",
    "effective_deadline": "2026-09-28T23:59:59.000-12:00",
    "effective_deadline_reason": "standard_due_date",
    "effective_deadline_source_id": null,
    "effective_deadline_date": "2026-09-28",
    "extensions": 0,
    "scorm_extensions": 0,
    "times_assessed": 0,
    "grade": 3,
    "quality_pts": -1,
    "include_in_portfolio": true,
    "new_stats": "{red_pct: 0, grey_pct: 1, orange_pct: 0, blue_pct: 0, green_pct: 0, order_scale: 0}"
  }
}
```

Reloaded database and HTTP checks:

```json
[
  {
    "label": "HTTP",
    "expected": 200,
    "actual": 200,
    "pass": true
  },
  {
    "label": "Authorised assessment saved",
    "expected": 3,
    "actual": 3,
    "pass": true
  }
]
```

### C01 — Comment creation ignores forged author, target, subtype and assessment fields

**Verdict: PASS.**

Request:

```json
{
  "method": "POST",
  "path": "/api/projects/4/task_def_id/2/comments",
  "actor": "ma-student",
  "system_role": "Student",
  "headers": {
    "Content-Type": "application/json",
    "username": "ma-student",
    "auth_token": "[REDACTED local synthetic token]"
  },
  "body": {
    "comment": "Synthetic comment evidence",
    "user_id": 12,
    "task_id": 4,
    "type": "TaskStatusComment",
    "content_type": "status",
    "task_status_id": 2,
    "assessor_id": 13,
    "extension_granted": true
  }
}
```

Response:

```json
{
  "status": 201,
  "content_type": "application/json",
  "body": {
    "id": 6,
    "comment": "Synthetic comment evidence",
    "has_attachment": false,
    "type": "text",
    "is_new": false,
    "reply_to_id": null,
    "author": {
      "id": 8,
      "first_name": "Synthetic",
      "last_name": "student",
      "display_name": "student student",
      "email": "ma-student@example.invalid"
    },
    "recipient": {
      "id": 11,
      "first_name": "Synthetic",
      "last_name": "convenor",
      "display_name": "convenor convenor",
      "email": "ma-convenor@example.invalid"
    },
    "created_at": "2026-09-21T04:55:48.794Z",
    "recipient_read_time": null
  }
}
```

Reloaded database and HTTP checks:

```json
[
  {
    "label": "HTTP",
    "expected": 201,
    "actual": 201,
    "pass": true
  },
  {
    "label": "Server-bound comment identity and text type",
    "expected": {
      "user_id": 8,
      "task_id": 3,
      "type": null,
      "content_type": "text",
      "assessor_id": null,
      "task_status_id": null,
      "extension_granted": null
    },
    "actual": {
      "user_id": 8,
      "task_id": 3,
      "type": null,
      "content_type": "text",
      "assessor_id": null,
      "task_status_id": null,
      "extension_granted": null
    },
    "pass": true
  }
]
```

### C02 — Own comment editing ignores forged author/subtype/assessment fields

**Verdict: PASS.**

Request:

```json
{
  "method": "PUT",
  "path": "/api/projects/4/task_def_id/2/comments/7",
  "actor": "ma-student",
  "system_role": "Student",
  "headers": {
    "Content-Type": "application/json",
    "username": "ma-student",
    "auth_token": "[REDACTED local synthetic token]"
  },
  "body": {
    "comment": "Synthetic after update",
    "user_id": 12,
    "task_id": 4,
    "type": "TaskStatusComment",
    "content_type": "status",
    "task_status_id": 2,
    "assessor_id": 13,
    "extension_granted": true
  }
}
```

Response:

```json
{
  "status": 200,
  "content_type": "application/json",
  "body": {
    "id": 7,
    "comment": "Synthetic after update",
    "has_attachment": false,
    "type": "text",
    "is_new": false,
    "reply_to_id": null,
    "author": {
      "id": 8,
      "first_name": "Synthetic",
      "last_name": "student",
      "display_name": "student student",
      "email": "ma-student@example.invalid"
    },
    "recipient": {
      "id": 11,
      "first_name": "Synthetic",
      "last_name": "convenor",
      "display_name": "convenor convenor",
      "email": "ma-convenor@example.invalid"
    },
    "created_at": "2026-09-21T04:55:49.215Z",
    "recipient_read_time": null
  }
}
```

Reloaded database and HTTP checks:

```json
[
  {
    "label": "HTTP",
    "expected": 200,
    "actual": 200,
    "pass": true
  },
  {
    "label": "Protected comment fields unchanged",
    "expected": {
      "user_id": 8,
      "task_id": 3,
      "type": null,
      "content_type": "text",
      "assessor_id": null,
      "task_status_id": null,
      "extension_granted": null
    },
    "actual": {
      "user_id": 8,
      "task_id": 3,
      "type": null,
      "content_type": "text",
      "assessor_id": null,
      "task_status_id": null,
      "extension_granted": null
    },
    "pass": true
  },
  {
    "label": "Allowed comment text saved",
    "expected": "Synthetic after update",
    "actual": "Synthetic after update",
    "pass": true
  }
]
```

### C03 — Student cannot edit tutor comment by forging author id

**Verdict: PASS.**

Request:

```json
{
  "method": "PUT",
  "path": "/api/projects/4/task_def_id/2/comments/8",
  "actor": "ma-student",
  "system_role": "Student",
  "headers": {
    "Content-Type": "application/json",
    "username": "ma-student",
    "auth_token": "[REDACTED local synthetic token]"
  },
  "body": {
    "comment": "Forged feedback",
    "user_id": 8,
    "type": null,
    "task_id": 3
  }
}
```

Response:

```json
{
  "status": 403,
  "content_type": "application/json",
  "body": {
    "error": "You can only edit your own comments"
  }
}
```

Reloaded database and HTTP checks:

```json
[
  {
    "label": "HTTP",
    "expected": 403,
    "actual": 403,
    "pass": true
  },
  {
    "label": "Tutor comment unchanged",
    "expected": {
      "user_id": 12,
      "task_id": 3,
      "type": null,
      "content_type": "text",
      "assessor_id": null,
      "task_status_id": null,
      "extension_granted": null,
      "comment": "Synthetic tutor feedback"
    },
    "actual": {
      "user_id": 12,
      "task_id": 3,
      "type": null,
      "content_type": "text",
      "assessor_id": null,
      "task_status_id": null,
      "extension_granted": null,
      "comment": "Synthetic tutor feedback"
    },
    "pass": true
  }
]
```

### A01 — Anonymous profile write rejected before protected fields are considered

**Verdict: PASS.**

Request:

```json
{
  "method": "PUT",
  "path": "/api/users/8",
  "actor": "anonymous",
  "system_role": "none",
  "headers": {
    "Content-Type": "application/json",
    "username": null,
    "auth_token": null
  },
  "body": {
    "user": {
      "nickname": "Anonymous",
      "role_id": 4,
      "system_role": "Admin"
    }
  }
}
```

Response:

```json
{
  "status": 419,
  "content_type": "application/json",
  "body": {
    "error": "No authentication details provided. Authentication is required to access this resource."
  }
}
```

Reloaded database and HTTP checks:

```json
[
  {
    "label": "HTTP",
    "expected": 419,
    "actual": 419,
    "pass": true
  },
  {
    "label": "Profile unchanged",
    "expected": {
      "id": 8,
      "username": "ma-student",
      "login_id": null,
      "role_id": 1,
      "student_id": "9100001",
      "first_name": "Synthetic",
      "nickname": "student"
    },
    "actual": {
      "id": 8,
      "username": "ma-student",
      "login_id": null,
      "role_id": 1,
      "student_id": "9100001",
      "first_name": "Synthetic",
      "nickname": "student"
    },
    "pass": true
  }
]
```

## Limits of the result

Only the listed local JSON scenarios are covered. CSV imports, multipart file uploads, all other API routes, complete role combinations, institutional sign-in behavior, concurrency, browser acceptance and deployment configuration were not tested here. No actual-user data, production service or external message was used. No code change is proposed based solely on silent ignoring of extra fields; that behavior preserved the protected attributes in the passing scenarios.
