.class public LBt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkk;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/PeekSearchActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/PeekSearchActivity;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, LBt;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, LBt;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    iget-object v1, p0, LBt;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->b(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Lki;

    move-result-object v1

    invoke-virtual {v1}, Lki;->b()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->b:F

    invoke-static {v0, v1}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->a(Lcom/yik/yak/ui/activity/PeekSearchActivity;F)F

    .line 131
    iget-object v0, p0, LBt;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    new-instance v1, Lcom/yik/yak/data/models/YakkerLocation;

    const-string v2, "Peek"

    invoke-direct {v1, v2}, Lcom/yik/yak/data/models/YakkerLocation;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->a(Lcom/yik/yak/ui/activity/PeekSearchActivity;Lcom/yik/yak/data/models/YakkerLocation;)Lcom/yik/yak/data/models/YakkerLocation;

    .line 132
    iget-object v0, p0, LBt;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-virtual {v0, v2, v3}, Lcom/yik/yak/data/models/YakkerLocation;->setLatitude(D)V

    .line 133
    iget-object v0, p0, LBt;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-virtual {v0, v2, v3}, Lcom/yik/yak/data/models/YakkerLocation;->setLongitude(D)V

    .line 134
    iget-object v0, p0, LBt;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    iget-object v1, p0, LBt;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->a(Lcom/yik/yak/data/models/YakkerLocation;)V

    .line 135
    iget-object v0, p0, LBt;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    iget-object v1, p0, LBt;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    iget-object v2, p0, LBt;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v2}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->b(Lcom/yik/yak/ui/activity/PeekSearchActivity;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/YakkerLocation;->setProvider(Ljava/lang/String;)V

    .line 136
    return-void
.end method
