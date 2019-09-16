###################################################################################
#<
# ctx - C style object with accessor API
#
# Represents the *current* "role", sts profile, iam user, credentials
# N.B: You may be arbitrarly levels of assuming deep
#
# Attributes:
#  - region
#  - output
#  - account_id
#  - account_name
#  - role_full_path
#  - role_session_name
#
#  Credential State
#   - config file
#   - credential file
#   - profile
#
#   Non Accessible: access_key, secret_access_key, session_token
#
#>
####################################################################################
p6_aws_organizations_svc_su_un() {

    p6_aws_sts_svc_role_unassume
}

p6_aws_organizations_svc_su() {

}

p6_aws_organizations_svc_run_as() {

    p6_aws_organizations_svc_su

    p6_run_x_cmd

    p6_aws_organizations_svc_su_un
}
