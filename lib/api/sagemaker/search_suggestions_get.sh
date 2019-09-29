######################################################################
#<
#
# Function:
#      = p6_aws_sagemaker_search_suggestions_get(resource)
#
# Arg(s):
#    resource - 
#
#
#>
######################################################################
p6_aws_sagemaker_search_suggestions_get() {
    local resource="$1"
    shift 1

    p6_run_read_cmd aws sagemaker get-search-suggestions --resource $resource "$@"
}