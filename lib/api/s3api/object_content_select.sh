######################################################################
#<
#
# Function:
#      = p6_aws_s3api_object_content_select(bucket, key, expression, expression_type, input_serialization, output_serialization)
#
# Arg(s):
#    bucket - 
#    key - 
#    expression - 
#    expression_type - 
#    input_serialization - 
#    output_serialization - 
#
#
#>
######################################################################
p6_aws_s3api_object_content_select() {
    local bucket="$1"
    local key="$2"
    local expression="$3"
    local expression_type="$4"
    local input_serialization="$5"
    local output_serialization="$6"
    shift 6

    p6_run_write_cmd aws s3api select-object-content --bucket $bucket --key $key --expression $expression --expression-type $expression_type --input-serialization $input_serialization --output-serialization $output_serialization "$@"
}