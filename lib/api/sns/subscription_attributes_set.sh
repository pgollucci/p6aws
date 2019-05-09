p6_aws_sns_subscription_attributes_set() {
    local subscription_arn="$1"
    local attribute_name="$2"
    shift 2

    p6_log_or_run aws sns set-subscription-attributes --subscription-arn $subscription_arn --attribute-name $attribute_name "$@"
}
