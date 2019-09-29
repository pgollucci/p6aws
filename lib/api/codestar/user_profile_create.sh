######################################################################
#<
#
# Function:
#      = p6_aws_codestar_user_profile_create(user_arn, display_name, email_address)
#
# Arg(s):
#    user_arn - 
#    display_name - 
#    email_address - 
#
#
#>
######################################################################
p6_aws_codestar_user_profile_create() {
    local user_arn="$1"
    local display_name="$2"
    local email_address="$3"
    shift 3

    p6_run_write_cmd aws codestar create-user-profile --user-arn $user_arn --display-name $display_name --email-address $email_address "$@"
}