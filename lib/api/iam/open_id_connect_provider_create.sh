######################################################################
#<
#
# Function:
#      = p6_aws_iam_open_id_connect_provider_create(url, thumbprint_list)
#
# Arg(s):
#    url - 
#    thumbprint_list - 
#
#
#>
######################################################################
p6_aws_iam_open_id_connect_provider_create() {
    local url="$1"
    local thumbprint_list="$2"
    shift 2

    p6_run_write_cmd aws iam create-open-id-connect-provider --url $url --thumbprint-list $thumbprint_list "$@"
}