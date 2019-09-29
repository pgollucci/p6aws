######################################################################
#<
#
# Function:
#      = p6_aws_iot_billing_group_create(billing_group_name)
#
# Arg(s):
#    billing_group_name - 
#
#
#>
######################################################################
p6_aws_iot_billing_group_create() {
    local billing_group_name="$1"
    shift 1

    p6_run_write_cmd aws iot create-billing-group --billing-group-name $billing_group_name "$@"
}