######################################################################
#<
#
# Function:
#      = p6_aws_iot_thing_register(template_body)
#
# Arg(s):
#    template_body - 
#
#
#>
######################################################################
p6_aws_iot_thing_register() {
    local template_body="$1"
    shift 1

    p6_run_write_cmd aws iot register-thing --template-body $template_body "$@"
}