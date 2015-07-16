.class public LBQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/SelectBasecampActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SelectBasecampActivity;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, LBQ;->a:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 377
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    .line 379
    iget-object v1, p0, LBQ;->a:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    iget-object v1, v1, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->g:Ljava/util/ArrayList;

    new-instance v2, LAw;

    const-string v3, "Current Location"

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v0

    const-string v5, "0"

    invoke-direct {v2, v3, v4, v0, v5}, LAw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v0, p0, LBQ;->a:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    iget-object v0, v0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->c:Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;

    iget-object v1, p0, LBQ;->a:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    iget-object v1, v1, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;->setData(Ljava/util/ArrayList;)V

    .line 387
    iget-object v0, p0, LBQ;->a:Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    iget-object v0, v0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->c:Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;->notifyDataSetChanged()V

    .line 388
    return-void
.end method
