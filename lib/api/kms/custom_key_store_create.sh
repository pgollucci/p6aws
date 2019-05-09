p6_aws_kms_custom_key_store_create() {
    local custom_key_store_name="$1"
    local cloud_hsm_cluster_id="$2"
    local trust_anchor_certificate="$3"
    local key_store_password="$4"
    shift 4

    p6_run_write_cmd aws kms create-custom-key-store --custom-key-store-name $custom_key_store_name --cloud-hsm-cluster-id $cloud_hsm_cluster_id --trust-anchor-certificate $trust_anchor_certificate --key-store-password $key_store_password "$@"
}
