.class public Lcom/yik/yak/ui/activity/PhotoActivity;
.super Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:LGO;

.field protected c:Landroid/widget/RelativeLayout;

.field public d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/widget/TextView;

.field protected h:Landroid/widget/TextView;

.field protected i:Lcom/yik/yak/ui/view/VoteView;

.field protected j:Lcom/yik/yak/data/models/Yak;

.field private k:Landroid/view/animation/Animation;

.field private l:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 59
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/yik/yak/ui/activity/PhotoActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    new-instance v0, LAv;

    invoke-direct {v0}, LAv;-><init>()V

    .line 63
    :try_start_0
    invoke-virtual {v0, p1}, LAv;->b(Lcom/yik/yak/data/models/Yak;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v2, "KEY_YAK"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v0, "KEY_CAN_VOTE"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)Lcom/yik/yak/data/models/Yak;
    .locals 3

    .prologue
    .line 89
    :try_start_0
    new-instance v0, LAv;

    invoke-direct {v0}, LAv;-><init>()V

    .line 90
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "KEY_YAK"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, v1}, LAv;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->j:Lcom/yik/yak/data/models/Yak;

    .line 92
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->j:Lcom/yik/yak/data/models/Yak;

    iput-object p0, v0, Lcom/yik/yak/data/models/Yak;->mContext:Landroid/content/Context;

    .line 93
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->j:Lcom/yik/yak/data/models/Yak;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 98
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 117
    const v0, 0x7f0d0087

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->c:Landroid/widget/RelativeLayout;

    .line 118
    const v0, 0x7f0d0086

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->d:Landroid/widget/ImageView;

    .line 119
    const v0, 0x7f0d0088

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->e:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0d008a

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->f:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->g:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->h:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0d0089

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/VoteView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->i:Lcom/yik/yak/ui/view/VoteView;

    .line 125
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v0, 0x7f040017

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->k:Landroid/view/animation/Animation;

    .line 128
    const v0, 0x7f04001d

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->l:Landroid/view/animation/Animation;

    .line 129
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 132
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/PhotoActivity;->a()Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_1

    .line 135
    iget-object v1, v0, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    invoke-static {v1}, LHi;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->e:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->f:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/yik/yak/data/models/Yak;->Content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->g:Landroid/widget/TextView;

    new-instance v2, LHk;

    invoke-direct {v2}, LHk;-><init>()V

    iget-object v3, v0, Lcom/yik/yak/data/models/Yak;->TimePosted:Ljava/lang/String;

    invoke-virtual {v2, v3}, LHk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-boolean v1, v0, Lcom/yik/yak/data/models/Yak;->IsComment:Z

    if-nez v1, :cond_5

    .line 145
    iget v1, v0, Lcom/yik/yak/data/models/Yak;->Comments:I

    if-nez v1, :cond_3

    .line 146
    iget-object v1, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->h:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->i:Lcom/yik/yak/ui/view/VoteView;

    invoke-virtual {v1, v0}, Lcom/yik/yak/ui/view/VoteView;->setYak(Lcom/yik/yak/data/models/Yak;)V

    .line 157
    :cond_1
    return-void

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->e:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/yik/yak/data/models/Yak;->YakkerHandle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 147
    :cond_3
    iget v1, v0, Lcom/yik/yak/data/models/Yak;->Comments:I

    if-ne v1, v4, :cond_4

    .line 148
    iget-object v1, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->h:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/yik/yak/data/models/Yak;->Comments:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reply"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 149
    :cond_4
    iget v1, v0, Lcom/yik/yak/data/models/Yak;->Comments:I

    if-le v1, v4, :cond_0

    .line 150
    iget-object v1, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->h:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/yik/yak/data/models/Yak;->Comments:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " replies"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 152
    :cond_5
    iget-object v1, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->h:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->l:Landroid/view/animation/Animation;

    if-ne v0, v1, :cond_1

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/yik/yak/data/models/Yak;
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->j:Lcom/yik/yak/data/models/Yak;

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/PhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    const-string v1, "KEY_YAK"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/PhotoActivity;->a(Landroid/os/Bundle;)Lcom/yik/yak/data/models/Yak;

    move-result-object v1

    iput-object v1, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->j:Lcom/yik/yak/data/models/Yak;

    .line 80
    iget-object v1, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->j:Lcom/yik/yak/data/models/Yak;

    const-string v2, "KEY_CAN_VOTE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/yik/yak/data/models/Yak;->CanVote:Z

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->j:Lcom/yik/yak/data/models/Yak;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 231
    :goto_0
    return-void

    .line 228
    :pswitch_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/PhotoActivity;->d()V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x7f0d0086
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-static {}, LAa;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PhotoActivity;->setContentView(I)V

    .line 111
    :goto_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/PhotoActivity;->b()V

    .line 112
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/PhotoActivity;->c()V

    .line 113
    const v0, 0x7f040019

    const v1, 0x7f04001e

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/PhotoActivity;->overridePendingTransition(II)V

    .line 114
    return-void

    .line 108
    :cond_0
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/PhotoActivity;->setContentView(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;->onDestroy()V

    .line 218
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->b:LGO;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->b:LGO;

    invoke-virtual {v0}, LGO;->a()V

    .line 221
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;->onPause()V

    .line 187
    const v0, 0x7f040018

    const v1, 0x7f04001f

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/PhotoActivity;->overridePendingTransition(II)V

    .line 188
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 194
    const-string v0, "KEY_YAK"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/activity/PhotoActivity;->a(Landroid/os/Bundle;)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->j:Lcom/yik/yak/data/models/Yak;

    .line 199
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 161
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;->onResume()V

    .line 162
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/PhotoActivity;->a()Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    invoke-static {v1}, LHi;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->LinkUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->d:Landroid/widget/ImageView;

    new-instance v2, LBD;

    invoke-direct {v2, p0}, LBD;-><init>(Lcom/yik/yak/ui/activity/PhotoActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 182
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-static {p0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    sget-object v1, LwG;->a:LwG;

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->a(LwG;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    const-string v1, "Error loading image."

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->a(Ljava/lang/CharSequence;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    invoke-static {v0}, LwF;->a(Lcom/nispok/snackbar/Snackbar;)V

    .line 180
    iget-object v0, p0, Lcom/yik/yak/ui/activity/PhotoActivity;->c:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseYikYakFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 206
    :try_start_0
    new-instance v0, LAv;

    invoke-direct {v0}, LAv;-><init>()V

    .line 207
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/PhotoActivity;->a()Lcom/yik/yak/data/models/Yak;

    move-result-object v1

    invoke-virtual {v0, v1}, LAv;->b(Lcom/yik/yak/data/models/Yak;)Lorg/json/JSONObject;

    move-result-object v0

    .line 208
    const-string v1, "KEY_YAK"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
