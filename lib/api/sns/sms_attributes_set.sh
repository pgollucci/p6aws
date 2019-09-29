######################################################################
#<
#
# Function:
#      = p6_aws_sns_sms_attributes_set(attributes)
#
# Arg(s):
#    attributes - 
#
#
#>
######################################################################
p6_aws_sns_sms_attributes_set() {
    local attributes="$1"
    shift 1

    p6_run_write_cmd aws sns set-sms-attributes --attributes $attributes "$@"
}