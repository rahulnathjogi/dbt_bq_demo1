{% macro calculate_tax(salary) %}
  case
    when {{ salary }} <= 10000 then {{ salary }} * 0.1
    when {{ salary }} > 10000 and {{ salary }} <= 20000 then {{ salary }} * 0.2
    else {{ salary }} * 0.3
  end
{% endmacro %}
