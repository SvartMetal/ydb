USE plato;

PRAGMA yt.DisableOptimizers = 'OutHorizontalJoin,HorizontalJoin,MultiHorizontalJoin,FuseMultiOutsWithOuterMaps';

SELECT
    ni + Date('2000-01-01'),
    wi + Date('2000-01-01'),
    ni + TzDate('2000-01-01,Europe/Moscow'),
    wi + TzDate('2000-01-01,Europe/Moscow'),
    ni + Datetime('2000-01-01T03:04:05Z'),
    wi + Datetime('2000-01-01T03:04:05Z'),
    ni + TzDatetime('2000-01-01T03:04:05,Europe/Moscow'),
    wi + TzDatetime('2000-01-01T03:04:05,Europe/Moscow'),
    ni + Timestamp('2000-01-01T03:04:05.678912Z'),
    wi + Timestamp('2000-01-01T03:04:05.678912Z'),
    ni + TzTimestamp('2000-01-01T03:04:05.678912,Europe/Moscow'),
    wi + TzTimestamp('2000-01-01T03:04:05.678912,Europe/Moscow'),
    ni + Date32('1900-01-01'),
    wi + Date32('1900-01-01'),
    ni + Datetime64('1900-01-01T03:04:05Z'),
    wi + Datetime64('1900-01-01T03:04:05Z'),
    ni + Timestamp64('1900-01-01T03:04:05.678912Z'),
    wi + Timestamp64('1900-01-01T03:04:05.678912Z'),
    ni + TzDate32('1900-01-01,Europe/Moscow'),
    wi + TzDate32('1900-01-01,Europe/Moscow'),
    ni + TzDatetime64('1900-01-01T03:04:05,Europe/Moscow'),
    wi + TzDatetime64('1900-01-01T03:04:05,Europe/Moscow'),
    ni + TzTimestamp64('1900-01-01T03:04:05.678912,Europe/Moscow'),
    wi + TzTimestamp64('1900-01-01T03:04:05.678912,Europe/Moscow'),
FROM
    Dates
;

SELECT
    Interval('P1D') + na,
    Interval64('P1D') + na,
    Interval('P1D') + naz,
    Interval64('P1D') + naz,
    Interval('P1D') + nd,
    Interval64('P1D') + nd,
    Interval('P1D') + ndz,
    Interval64('P1D') + ndz,
    Interval('P1D') + nt,
    Interval64('P1D') + nt,
    Interval('P1D') + ntz,
    Interval64('P1D') + ntz,
    Interval('P1D') + wa,
    Interval64('P1D') + wa,
    Interval('P1D') + wd,
    Interval64('P1D') + wd,
    Interval('P1D') + wt,
    Interval64('P1D') + wt,
    Interval('P1D') + waz,
    Interval64('P1D') + waz,
    Interval('P1D') + wdz,
    Interval64('P1D') + wdz,
    Interval('P1D') + wtz,
    Interval64('P1D') + wtz
FROM
    Dates
;
