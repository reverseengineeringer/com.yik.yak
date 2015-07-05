.class public LAX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, LAX;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 207
    iget-object v0, p0, LAX;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/MainActivity;->d(Lcom/yik/yak/ui/activity/MainActivity;)V

    .line 208
    iget-object v0, p0, LAX;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->e()V

    .line 210
    iget-object v0, p0, LAX;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/MainActivity;->e(Lcom/yik/yak/ui/activity/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LAX;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/MainActivity;->f(Lcom/yik/yak/ui/activity/MainActivity;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, LAX;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/MainActivity;->f(Lcom/yik/yak/ui/activity/MainActivity;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 211
    iget-object v1, p0, LAX;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-static {}, LzQ;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, LzQ;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/yik/yak/ui/activity/MainActivity;->a(Lcom/yik/yak/ui/activity/MainActivity;Z)Z

    .line 212
    iget-object v0, p0, LAX;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-static {v0, v4, v5}, Lcom/yik/yak/ui/activity/MainActivity;->a(Lcom/yik/yak/ui/activity/MainActivity;J)J

    .line 215
    :cond_0
    sget-object v0, LAS;->a:[I

    invoke-static {p1}, LCH;->a(I)LCH;

    move-result-object v1

    invoke-virtual {v1}, LCH;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 246
    :goto_1
    iget-object v0, p0, LAX;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/MainActivity;->a(Lcom/yik/yak/ui/activity/MainActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, LBe;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, LAX;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/MainActivity;->a(Lcom/yik/yak/ui/activity/MainActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, LBe;

    invoke-interface {v0}, LBe;->b()V

    .line 249
    :cond_1
    return-void

    .line 211
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 217
    :pswitch_0
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    const-string v1, "Home"

    invoke-virtual {v0, v1}, LGs;->j(Ljava/lang/String;)V

    .line 218
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    const-string v1, "MainScreen"

    invoke-virtual {v0, v1}, LGs;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 221
    :pswitch_1
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    const-string v1, "Peek"

    invoke-virtual {v0, v1}, LGs;->j(Ljava/lang/String;)V

    .line 222
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    const-string v1, "PeekScreen"

    invoke-virtual {v0, v1}, LGs;->a(Ljava/lang/String;)V

    .line 223
    invoke-static {}, LAB;->a()LAB;

    move-result-object v0

    invoke-virtual {v0}, LAB;->g()V

    goto :goto_1

    .line 226
    :pswitch_2
    iget-object v0, p0, LAX;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/yik/yak/ui/activity/MainActivity;->e(Lcom/yik/yak/ui/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LAX;->a:Lcom/yik/yak/ui/activity/MainActivity;

    const-class v2, Lcom/yik/yak/ui/activity/PinCodeDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    const-string v1, "title"

    iget-object v2, p0, LAX;->a:Lcom/yik/yak/ui/activity/MainActivity;

    invoke-virtual {v2}, Lcom/yik/yak/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080128

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v1, "pin"

    invoke-static {}, LzQ;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, LAX;->a:Lcom/yik/yak/ui/activity/MainActivity;

    const/16 v2, 0x1770

    invoke-virtual {v1, v0, v2}, Lcom/yik/yak/ui/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 232
    :cond_3
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    const-string v1, "Me"

    invoke-virtual {v0, v1}, LGs;->j(Ljava/lang/String;)V

    .line 233
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    const-string v1, "MeScreen"

    invoke-virtual {v0, v1}, LGs;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 237
    :pswitch_3
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    const-string v1, "More"

    invoke-virtual {v0, v1}, LGs;->j(Ljava/lang/String;)V

    .line 238
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    const-string v1, "MoreScreen"

    invoke-virtual {v0, v1}, LGs;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
