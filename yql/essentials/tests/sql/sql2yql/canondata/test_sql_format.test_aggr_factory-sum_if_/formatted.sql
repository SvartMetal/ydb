/* syntax version 1 */
/* postgres can not */
$t = AsList(AsStruct(1 AS a), AsStruct(2 AS a));
$f = AGGREGATION_FACTORY('sum_if');

SELECT
    Yql::Aggregate(
        $t, AsTuple(), AsTuple(
            AsTuple(
                AsAtom('res'), $f(
                    ListItemType(TypeOf($t)), ($z) -> {
                        RETURN AsTuple($z.a, $z.a > 1);
                    }
                )
            )
        )
    )
;

USE plato;

INSERT INTO @a
SELECT
    AsTuple(a, a > 1) AS aa
FROM
    as_table($t)
;

COMMIT;

SELECT
    AGGREGATE_BY(aa, $f)
FROM
    @a
;
