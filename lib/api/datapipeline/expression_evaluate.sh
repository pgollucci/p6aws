######################################################################
#<
#
# Function:
#      = p6_aws_datapipeline_expression_evaluate(pipeline_id, object_id, expression)
#
# Arg(s):
#    pipeline_id - 
#    object_id - 
#    expression - 
#
#
#>
######################################################################
p6_aws_datapipeline_expression_evaluate() {
    local pipeline_id="$1"
    local object_id="$2"
    local expression="$3"
    shift 3

    p6_run_write_cmd aws datapipeline evaluate-expression --pipeline-id $pipeline_id --object-id $object_id --expression $expression "$@"
}