{% macro high_low_salary(column_name) %}
    CASE 
        WHEN {{column_name}} >= 10000
            THEN 'HIGH_SALARY'
        ELSE 'LOW_SALARY'
    END
{% endmacro %}
