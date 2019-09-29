######################################################################
#<
#
# Function:
#      = p6_aws_es_reserved_elasticsearch_instance_offering_purchase(reserved_elasticsearch_instance_offering_id, reservation_name)
#
# Arg(s):
#    reserved_elasticsearch_instance_offering_id - 
#    reservation_name - 
#
#
#>
######################################################################
p6_aws_es_reserved_elasticsearch_instance_offering_purchase() {
    local reserved_elasticsearch_instance_offering_id="$1"
    local reservation_name="$2"
    shift 2

    p6_run_write_cmd aws es purchase-reserved-elasticsearch-instance-offering --reserved-elasticsearch-instance-offering-id $reserved_elasticsearch_instance_offering_id --reservation-name $reservation_name "$@"
}