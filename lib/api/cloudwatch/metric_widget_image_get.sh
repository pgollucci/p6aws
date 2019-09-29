######################################################################
#<
#
# Function:
#      = p6_aws_cloudwatch_metric_widget_image_get(metric_widget)
#
# Arg(s):
#    metric_widget - 
#
#
#>
######################################################################
p6_aws_cloudwatch_metric_widget_image_get() {
    local metric_widget="$1"
    shift 1

    p6_run_read_cmd aws cloudwatch get-metric-widget-image --metric-widget $metric_widget "$@"
}