######################################################################
#<
#
# Function:
#      = p6_aws_servicecatalog_record_history_list()
#
#
#
#>
######################################################################
p6_aws_servicecatalog_record_history_list() {

    p6_run_read_cmd aws servicecatalog list-record-history "$@"
}