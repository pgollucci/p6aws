######################################################################
#<
#
# Function:
#      = p6_aws_glue_classifiers_get()
#
#
#
#>
######################################################################
p6_aws_glue_classifiers_get() {

    p6_run_read_cmd aws glue get-classifiers "$@"
}