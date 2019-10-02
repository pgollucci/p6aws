######################################################################
#<
#
# Function:
#	p6_aws_comprehend_entity_recognizers_list()
#
#>
######################################################################
p6_aws_comprehend_entity_recognizers_list() {

    p6_run_read_cmd aws comprehend list-entity-recognizers "$@"
}