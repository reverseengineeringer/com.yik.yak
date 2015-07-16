.class public LBv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/PeekSearchActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/PeekSearchActivity;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, LBv;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 176
    iget-object v1, p0, LBv;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-virtual {v1}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->b()V

    .line 178
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, LBv;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v2}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->f(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 180
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 181
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 182
    :cond_0
    iget-object v0, p0, LBv;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->f(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Could not find map coordinates for location."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    .line 186
    invoke-virtual {v1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    .line 187
    invoke-virtual {v1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v6

    .line 189
    iget-object v1, p0, LBv;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    new-instance v3, Lcom/yik/yak/data/models/YakkerLocation;

    invoke-direct {v3, v0}, Lcom/yik/yak/data/models/YakkerLocation;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->a(Lcom/yik/yak/ui/activity/PeekSearchActivity;Lcom/yik/yak/data/models/YakkerLocation;)Lcom/yik/yak/data/models/YakkerLocation;

    .line 190
    iget-object v1, p0, LBv;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lcom/yik/yak/data/models/YakkerLocation;->setLatitude(D)V

    .line 191
    iget-object v1, p0, LBv;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/yik/yak/data/models/YakkerLocation;->setLongitude(D)V

    .line 192
    iget-object v1, p0, LBv;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    iget-object v3, p0, LBv;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v3}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->c(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->a(Lcom/yik/yak/data/models/YakkerLocation;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 196
    :catch_1
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
