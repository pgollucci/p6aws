######################################################################
#<
#
# Function:
#      = p6_aws_glue_dataflow_graph_get()
#
#
#
#>
######################################################################
p6_aws_glue_dataflow_graph_get() {

    p6_run_read_cmd aws glue get-dataflow-graph "$@"
}