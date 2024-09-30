resource "aws_route53_record" "expense"{
    for_each = aws_instance.terraform
    zone_id = var.zone_id
    type = "A"
    name = each.key == "frontend-prod" ? var.domain_name : "${each.key}.${var.domain_name}" #only prod we crete main dns so we give frontend-prod reamining all same name
    ttl = 1
    records = startswith(each.key ,"frontend") ? [each.value.public_ip] : [each.value.private_ip] #starts with function we can use check it starts with frontend or not
    allow_overwrite = true
}