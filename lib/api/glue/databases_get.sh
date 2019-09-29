######################################################################
#<
#
# Function:
#      = p6_aws_glue_databases_get()
#
#
#
#>
######################################################################
p6_aws_glue_databases_get() {

    p6_run_read_cmd aws glue get-databases "$@"
}