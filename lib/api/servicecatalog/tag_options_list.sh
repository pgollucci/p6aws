######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_tag_options_list()
#
#>
######################################################################
p6_aws_servicecatalog_tag_options_list() {

    p6_run_read_cmd aws servicecatalog list-tag-options "$@"
}