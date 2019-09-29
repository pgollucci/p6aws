######################################################################
#<
#
# Function:
#      = p6_aws_ds_user_password_reset(directory_id, user_name, new_password)
#
# Arg(s):
#    directory_id - 
#    user_name - 
#    new_password - 
#
#
#>
######################################################################
p6_aws_ds_user_password_reset() {
    local directory_id="$1"
    local user_name="$2"
    local new_password="$3"
    shift 3

    p6_run_write_cmd aws ds reset-user-password --directory-id $directory_id --user-name $user_name --new-password $new_password "$@"
}