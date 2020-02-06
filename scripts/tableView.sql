SELECT
    place_prototype.sub_package_id,
    place_prototype.row,
    place_prototype.col,
    package.code,
    package.name,
    package.material_id,
    package.photo_id,
    package.payload,
    package.wx,
    package.wy,
    package.h,
    (package.wx * package.wy * package.h),
    package.color,
    package.created,
    package.updated,
    package.deleted,
	material.name as material_name
FROM
    place_prototype
LEFT JOIN
	package 
ON (
	package.id = place_prototype.sub_package_id OR
	package.id = null
)
LEFT JOIN
	material 
ON (
	package.material_id = material.id OR
	package.material_id = null
)
WHERE place_prototype.package_id = 4
ORDER BY
    place_prototype.row,
    place_prototype.col;