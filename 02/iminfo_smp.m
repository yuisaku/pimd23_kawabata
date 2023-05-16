info1980 = imfinfo("published_image/bearGlacier1980.png")
taken1980 = info1980.CreationTime
info2011 = imfinfo("published_image/bearGlacier2011.png")
taken2011 = info2011.CreationTime

d1 = datetime(taken1980, "locale", "en_us");
d2 = datetime(taken2011, "locale", "en_us");

dayOf1980 = day(d1, "dayofyear")
dayOf2011 = day(d2, "dayofyear")

dayOf1980 - dayOf2011

