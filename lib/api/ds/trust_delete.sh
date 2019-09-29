######################################################################
#<
#
# Function:
#      = p6_aws_ds_trust_delete(trust_id)
#
# Arg(s):
#    trust_id - 
#
#
#>
######################################################################
p6_aws_ds_trust_delete() {
    local trust_id="$1"
    shift 1

    p6_run_write_cmd aws ds delete-trust --trust-id $trust_id "$@"
}