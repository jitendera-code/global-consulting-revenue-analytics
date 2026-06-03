ALTER TABLE services_data
ADD CONSTRAINT fk_branch_id
FOREIGN KEY (branch_id) REFERENCES branch_data(Branch_ID);

SELECT
    b.Region,
    SUM(s.total_revenue) AS TotalRevenue

FROM service_data s

JOIN branch_data b
ON s.branch_id = b.Branch_ID

GROUP BY b.Region

ORDER BY TotalRevenue DESC;

SELECT
    b.Region,
    s.service_date AS ServiceDate,
    SUM(s.total_revenue) AS TotalRevenue

FROM service_data s

JOIN branch_data b
ON s.branch_id = b.branch_id

GROUP BY    
    b.Region,
    s.service_date

ORDER BY TotalRevenue DESC;

SELECT
    department,
    SUM(total_revenue) AS Totalrevenue,
    service_date

FROM service_data

GROUP BY
    department,
    service_date

SELECT TOP 5

    client_name,
    SUM(total_revenue) AS TotalRevenue, service_date

FROM dbo.service_data

GROUP BY client_name, service_date

ORDER BY TotalRevenue DESC;





select client_name,sum(total_revenue) as total_revenue, service_date
from service_data
group by client_name, service_date
order by total_revenue desc


select sum(total_revenue) as totalRevenue
from service_data 

select sum(hourly_rate) as total_hours from service_data

SELECT
    department,
    SUM(total_revenue) AS department_revenue,(sum(total_revenue)/(select sum(total_revenue) from service_data)*100) as revenue_percentage
FROM service_data
GROUP BY department
ORDER BY department_revenue DESC;


WITH monthly_revenue AS (

    SELECT
        FORMAT(service_date,'yyyy-MM') AS month,
        SUM(total_revenue) AS revenue

    FROM service_data

    GROUP BY FORMAT(service_date,'yyyy-MM')

),

revenue_comparison AS (

    SELECT

        month,
        revenue,

        LAG(revenue)
        OVER(ORDER BY month) AS previousmonth_revenue

    FROM monthly_revenue

)

SELECT

    month,
    revenue,
    previousmonth_revenue,

    CASE

        WHEN previousmonth_revenue > 0

        THEN
        (
            (revenue - previousmonth_revenue)
            /
            previousmonth_revenue
        ) * 100

        ELSE NULL

    END AS revenue_percentage_increase

FROM revenue_comparison;



select*from service_data

select client_name,sum(total_revenue) as revenue
from service_data
group by  client_name