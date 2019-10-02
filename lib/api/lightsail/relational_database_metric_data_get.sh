######################################################################
#<
#
# Function:
#	p6_aws_lightsail_relational_database_metric_data_get(relational_database_name, metric_name, period, start_time, end_time, unit, statistics)
#
#  Args:
#	relational_database_name - 
#	metric_name - 
#	period - 
#	start_time - 
#	end_time - 
#	unit - 
#	statistics - 
#
#>
######################################################################
p6_aws_lightsail_relational_database_metric_data_get() {
    local relational_database_name="$1"
    local metric_name="$2"
    local period="$3"
    local start_time="$4"
    local end_time="$5"
    local unit="$6"
    local statistics="$7"
    shift 7

    p6_run_read_cmd aws lightsail get-relational-database-metric-data --relational-database-name $relational_database_name --metric-name $metric_name --period $period --start-time $start_time --end-time $end_time --unit $unit --statistics $statistics "$@"
}