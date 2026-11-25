# Groups
resource "okta_group" "eng" {
  name        = "eng"
  description = "Engineering team"
}

resource "okta_group" "finance" {
  name        = "finance"
  description = "Finance team"
}

resource "okta_group" "it_admins" {
  name        = "it-admins"
  description = "IT administrators-boss"
}

# Test users
resource "okta_user" "alice" {
  first_name = "Alice"
  last_name  = "Test"
  login      = "alice.test@example.com"
  email      = "alice.test@example.com"
}

resource "okta_user" "bob" {
  first_name = "Bob"
  last_name  = "Test"
  login      = "bob.test@example.com"
  email      = "bob.test@example.com"
}

# Group memberships
resource "okta_group_memberships" "eng_members" {
  group_id = okta_group.eng.id
  users    = [okta_user.alice.id]
}

resource "okta_group_memberships" "it_admin_members" {
  group_id = okta_group.it_admins.id
  users    = [okta_user.bob.id]
}
