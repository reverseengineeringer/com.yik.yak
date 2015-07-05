.class public LCf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LAe;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/SendAYak;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, LCf;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yik/yak/data/http/request/YikYakRequest;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 593
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 594
    iget-object v0, p0, LCf;->a:Lcom/yik/yak/ui/activity/SendAYak;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->b(Lcom/yik/yak/ui/activity/SendAYak;Z)Z

    .line 595
    return-void
.end method

.method public a(Lxz;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 568
    check-cast p2, Lorg/json/JSONObject;

    .line 572
    :try_start_0
    const-string v0, "status_message"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 578
    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 588
    :goto_1
    iget-object v0, p0, LCf;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->b(Lcom/yik/yak/ui/activity/SendAYak;Z)Z

    .line 589
    :goto_2
    return-void

    .line 573
    :catch_0
    move-exception v0

    .line 574
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 578
    :sswitch_0
    const-string v3, "Not Whitelisted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 580
    :pswitch_0
    iget-object v0, p0, LCf;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->k(Lcom/yik/yak/ui/activity/SendAYak;)V

    goto :goto_1

    .line 584
    :pswitch_1
    iget-object v0, p0, LCf;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/SendAYak;->l(Lcom/yik/yak/ui/activity/SendAYak;)V

    goto :goto_1

    .line 578
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f4abffd -> :sswitch_1
        -0x4fa096e7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
