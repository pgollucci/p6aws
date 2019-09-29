######################################################################
#<
#
# Function:
#      = p6_aws_resourcegroupstaggingapi_tag_values_get(key)
#
# Arg(s):
#    key - 
#
#
#>
######################################################################
p6_aws_resourcegroupstaggingapi_tag_values_get() {
    local key="$1"
    shift 1

    p6_run_read_cmd aws resourcegroupstaggingapi get-tag-values --key $key "$@"
}