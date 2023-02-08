{% test test_count(model) %}

select count(*) from {{model}}

{% endtest %}