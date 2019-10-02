######################################################################
#<
#
# Function:
#	p6_aws_glue_connections_get()
#
#>
######################################################################
p6_aws_glue_connections_get() {

    p6_run_read_cmd aws glue get-connections "$@"
}