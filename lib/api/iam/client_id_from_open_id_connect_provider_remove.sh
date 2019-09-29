######################################################################
#<
#
# Function:
#      = p6_aws_iam_client_id_from_open_id_connect_provider_remove(open_id_connect_provider_arn, client_id)
#
# Arg(s):
#    open_id_connect_provider_arn - 
#    client_id - 
#
#
#>
######################################################################
p6_aws_iam_client_id_from_open_id_connect_provider_remove() {
    local open_id_connect_provider_arn="$1"
    local client_id="$2"
    shift 2

    p6_run_write_cmd aws iam remove-client-id-from-open-id-connect-provider --open-id-connect-provider-arn $open_id_connect_provider_arn --client-id $client_id "$@"
}