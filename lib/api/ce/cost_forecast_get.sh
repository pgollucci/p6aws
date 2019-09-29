######################################################################
#<
#
# Function:
#      = p6_aws_ce_cost_forecast_get(time_period, metric, granularity)
#
# Arg(s):
#    time_period - 
#    metric - 
#    granularity - 
#
#
#>
######################################################################
p6_aws_ce_cost_forecast_get() {
    local time_period="$1"
    local metric="$2"
    local granularity="$3"
    shift 3

    p6_run_read_cmd aws ce get-cost-forecast --time-period $time_period --metric $metric --granularity $granularity "$@"
}