SELECT 
    band_name,
    CASE 
        WHEN split IS NULL THEN 2022 - formed -- Band is still active
        ELSE split - formed -- Band has split
    END AS lifespan
FROM 
    metal_bands
WHERE 
    main_style = 'Glam rock'
ORDER BY 
    lifespan DESC;

