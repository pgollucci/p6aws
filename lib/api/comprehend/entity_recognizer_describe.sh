######################################################################
#<
#
# Function:
#	p6_aws_comprehend_entity_recognizer_describe(entity_recognizer_arn)
#
#  Args:
#	entity_recognizer_arn - 
#
#>
######################################################################
p6_aws_comprehend_entity_recognizer_describe() {
    local entity_recognizer_arn="$1"
    shift 1

    p6_run_read_cmd aws comprehend describe-entity-recognizer --entity-recognizer-arn $entity_recognizer_arn "$@"
}