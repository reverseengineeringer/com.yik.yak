.class public Lcom/yik/yak/ui/activity/PhotoActivity;
.super Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;
.source "SourceFile"


# instance fields
.field public b:LGg;

.field public mImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0085
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PhotoActivity;->setContentView(I)V

    .line 31
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 32
    const v0, 0x7f040019

    const v1, 0x7f04001e

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/PhotoActivity;->overridePendingTransition(II)V

    .line 33
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;->onDestroy()V

    .line 67
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->b:LGg;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->b:LGg;

    invoke-virtual {v0}, LGg;->a()V

    .line 70
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;->onPause()V

    .line 61
    const v0, 0x7f040018

    const v1, 0x7f04001f

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/PhotoActivity;->overridePendingTransition(II)V

    .line 62
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 37
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;->onResume()V

    .line 38
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/PhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->mImageView:Landroid/widget/ImageView;

    new-instance v2, LBt;

    invoke-direct {v2, p0}, LBt;-><init>(Lcom/yik/yak/ui/activity/PhotoActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/PhotoActivity;->finish()V

    goto :goto_0
.end method
