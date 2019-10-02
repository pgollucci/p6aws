######################################################################
#<
#
# Function:
#	p6_aws_comprehend_entity_recognizer_delete(entity_recognizer_arn)
#
#  Args:
#	entity_recognizer_arn - 
#
#>
######################################################################
p6_aws_comprehend_entity_recognizer_delete() {
    local entity_recognizer_arn="$1"
    shift 1

    p6_run_write_cmd aws comprehend delete-entity-recognizer --entity-recognizer-arn $entity_recognizer_arn "$@"
}