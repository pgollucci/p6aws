######################################################################
#<
#
# Function:
#      = p6_aws_iot_index_describe(index_name)
#
# Arg(s):
#    index_name - 
#
#
#>
######################################################################
p6_aws_iot_index_describe() {
    local index_name="$1"
    shift 1

    p6_run_read_cmd aws iot describe-index --index-name $index_name "$@"
}