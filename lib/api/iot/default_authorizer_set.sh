######################################################################
#<
#
# Function:
#      = p6_aws_iot_default_authorizer_set(authorizer_name)
#
# Arg(s):
#    authorizer_name - 
#
#
#>
######################################################################
p6_aws_iot_default_authorizer_set() {
    local authorizer_name="$1"
    shift 1

    p6_run_write_cmd aws iot set-default-authorizer --authorizer-name $authorizer_name "$@"
}