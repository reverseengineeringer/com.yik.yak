.class public final LmJ;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
    .locals 3

    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    iget v1, p0, LmJ;->b:F

    iget v2, p0, LmJ;->a:F

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;-><init>(FF)V

    return-object v0
.end method

.method public a(F)LmJ;
    .locals 0

    iput p1, p0, LmJ;->b:F

    return-object p0
.end method

.method public b(F)LmJ;
    .locals 0

    iput p1, p0, LmJ;->a:F

    return-object p0
.end method
