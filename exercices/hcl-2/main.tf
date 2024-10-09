output "regions_list" {
  value = keys(var.id_by_region)
}

output "regions_count" {
  value = length(var.id_by_region)
}

output "id_paris" {
  value = var.id_by_region.eu-west-3
}

output "clean_sizes" {
  value = split(",", var.raw_sizes)
}

output "up_colors" {
    value = [for a in var.colors: upper(a)]
}

output "list_ips" {
    value = concat(var.allowed_ips, ["127.0.0.1"])
}