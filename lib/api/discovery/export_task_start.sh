######################################################################
#<
#
# Function:
#	p6_aws_discovery_export_task_start()
#
#>
######################################################################
p6_aws_discovery_export_task_start() {

    p6_run_write_cmd aws discovery start-export-task "$@"
}