.class public Lcom/yik/yak/ui/view/VoteView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Z

.field private b:Lcom/yik/yak/data/models/Yak;

.field private c:Lcom/yik/yak/ui/view/AnimatedTextView;

.field private d:Lcom/yik/yak/ui/view/VoteArrowView;

.field private e:Lcom/yik/yak/ui/view/VoteArrowView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yik/yak/ui/view/VoteView;->a:Z

    .line 43
    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 9

    .prologue
    const/high16 v1, 0x3fa00000    # 1.25f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    .line 75
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 76
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 77
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 78
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 79
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 80
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/VoteView;->c()Lcom/yik/yak/ui/view/AnimatedTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/view/VoteView;->b:Lcom/yik/yak/data/models/Yak;

    iget v1, v1, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/AnimatedTextView;->setNumber(I)V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/view/VoteView;->b:Lcom/yik/yak/data/models/Yak;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/Yak;->CanVote:Z

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/VoteView;->setVotingEnabled(Z)V

    .line 91
    iget-boolean v0, p0, Lcom/yik/yak/ui/view/VoteView;->a:Z

    if-eqz v0, :cond_3

    .line 92
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/VoteView;->c()Lcom/yik/yak/ui/view/AnimatedTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yik/yak/ui/view/VoteView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/AnimatedTextView;->setColor(I)V

    .line 94
    iget-object v0, p0, Lcom/yik/yak/ui/view/VoteView;->b:Lcom/yik/yak/data/models/Yak;

    iget v0, v0, Lcom/yik/yak/data/models/Yak;->Liked:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 95
    sget-object v0, LFz;->a:LFz;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/VoteView;->setVoteType(LFz;)V

    .line 104
    :goto_1
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/VoteView;->c()Lcom/yik/yak/ui/view/AnimatedTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/view/VoteView;->b:Lcom/yik/yak/data/models/Yak;

    iget v1, v1, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    sget-object v2, LFf;->c:LFf;

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/ui/view/AnimatedTextView;->setNumber(ILFf;)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/view/VoteView;->b:Lcom/yik/yak/data/models/Yak;

    iget v0, v0, Lcom/yik/yak/data/models/Yak;->Liked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 97
    sget-object v0, LFz;->b:LFz;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/VoteView;->setVoteType(LFz;)V

    goto :goto_1

    .line 99
    :cond_2
    sget-object v0, LFz;->c:LFz;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/VoteView;->setVoteType(LFz;)V

    goto :goto_1

    .line 102
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/VoteView;->setVotingEnabled(Z)V

    goto :goto_1
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/VoteView;->e()Lcom/yik/yak/ui/view/VoteArrowView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/view/VoteView;->a(Landroid/widget/ImageView;)V

    .line 146
    iget-boolean v0, p0, Lcom/yik/yak/ui/view/VoteView;->a:Z

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/yik/yak/ui/view/VoteView;->b:Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v0, p1}, Lcom/yik/yak/data/models/Yak;->upvote(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/view/VoteView;->a(Z)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/view/VoteView;->b:Lcom/yik/yak/data/models/Yak;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/Yak;->mLoadingYak:Z

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/yik/yak/ui/view/VoteView;->f()V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/VoteView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yik/yak/ui/view/VoteView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080130

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/VoteView;->d()Lcom/yik/yak/ui/view/VoteArrowView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/view/VoteView;->a(Landroid/widget/ImageView;)V

    .line 134
    iget-boolean v0, p0, Lcom/yik/yak/ui/view/VoteView;->a:Z

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/yik/yak/ui/view/VoteView;->b:Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v0}, Lcom/yik/yak/data/models/Yak;->downvote()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/view/VoteView;->a(Z)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/view/VoteView;->b:Lcom/yik/yak/data/models/Yak;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/Yak;->mLoadingYak:Z

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/yik/yak/ui/view/VoteView;->f()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/VoteView;->e()Lcom/yik/yak/ui/view/VoteArrowView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/VoteView;->onClick(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0, p0}, Lcom/yik/yak/ui/view/VoteView;->onClick(Landroid/view/View;)V

    .line 71
    return-void
.end method

.method public c()Lcom/yik/yak/ui/view/AnimatedTextView;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/yik/yak/ui/view/VoteView;->c:Lcom/yik/yak/ui/view/AnimatedTextView;

    if-nez v0, :cond_0

    .line 176
    const v0, 0x7f0d01b4

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/VoteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/AnimatedTextView;

    iput-object v0, p0, Lcom/yik/yak/ui/view/VoteView;->c:Lcom/yik/yak/ui/view/AnimatedTextView;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/view/VoteView;->c:Lcom/yik/yak/ui/view/AnimatedTextView;

    return-object v0
.end method

.method public d()Lcom/yik/yak/ui/view/VoteArrowView;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/yik/yak/ui/view/VoteView;->d:Lcom/yik/yak/ui/view/VoteArrowView;

    if-nez v0, :cond_0

    .line 184
    const v0, 0x7f0d01b5

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/VoteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/VoteArrowView;

    iput-object v0, p0, Lcom/yik/yak/ui/view/VoteView;->d:Lcom/yik/yak/ui/view/VoteArrowView;

    .line 185
    iget-object v0, p0, Lcom/yik/yak/ui/view/VoteView;->d:Lcom/yik/yak/ui/view/VoteArrowView;

    invoke-virtual {v0, p0}, Lcom/yik/yak/ui/view/VoteArrowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/view/VoteView;->d:Lcom/yik/yak/ui/view/VoteArrowView;

    return-object v0
.end method

.method public e()Lcom/yik/yak/ui/view/VoteArrowView;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/yik/yak/ui/view/VoteView;->e:Lcom/yik/yak/ui/view/VoteArrowView;

    if-nez v0, :cond_0

    .line 193
    const v0, 0x7f0d01b3

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/VoteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/VoteArrowView;

    iput-object v0, p0, Lcom/yik/yak/ui/view/VoteView;->e:Lcom/yik/yak/ui/view/VoteArrowView;

    .line 194
    iget-object v0, p0, Lcom/yik/yak/ui/view/VoteView;->e:Lcom/yik/yak/ui/view/VoteArrowView;

    invoke-virtual {v0, p0}, Lcom/yik/yak/ui/view/VoteArrowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/view/VoteView;->e:Lcom/yik/yak/ui/view/VoteArrowView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 126
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/view/VoteView;->b(Z)V

    .line 129
    :goto_0
    return-void

    .line 118
    :pswitch_1
    invoke-direct {p0}, Lcom/yik/yak/ui/view/VoteView;->g()V

    goto :goto_0

    .line 122
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/view/VoteView;->b(Z)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d01b3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVoteType(LFz;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/VoteView;->d()Lcom/yik/yak/ui/view/VoteArrowView;

    move-result-object v3

    sget-object v0, LFz;->b:LFz;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/yik/yak/ui/view/VoteArrowView;->setSelected(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/VoteView;->e()Lcom/yik/yak/ui/view/VoteArrowView;

    move-result-object v0

    sget-object v3, LFz;->a:LFz;

    if-ne p1, v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/VoteArrowView;->setSelected(Z)V

    .line 59
    return-void

    :cond_0
    move v0, v2

    .line 57
    goto :goto_0

    :cond_1
    move v1, v2

    .line 58
    goto :goto_1
.end method

.method public setVotingEnabled(Z)V
    .locals 3

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/yik/yak/ui/view/VoteView;->a:Z

    .line 51
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/VoteView;->d()Lcom/yik/yak/ui/view/VoteArrowView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/view/VoteArrowView;->setEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/VoteView;->e()Lcom/yik/yak/ui/view/VoteArrowView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yik/yak/ui/view/VoteArrowView;->setEnabled(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/VoteView;->c()Lcom/yik/yak/ui/view/AnimatedTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yik/yak/ui/view/VoteView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/AnimatedTextView;->setColor(I)V

    .line 54
    return-void
.end method

.method public setYak(Lcom/yik/yak/data/models/Yak;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/yik/yak/ui/view/VoteView;->b:Lcom/yik/yak/data/models/Yak;

    if-eq v0, p1, :cond_0

    .line 165
    iput-object p1, p0, Lcom/yik/yak/ui/view/VoteView;->b:Lcom/yik/yak/data/models/Yak;

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/view/VoteView;->a(Z)V

    .line 168
    :cond_0
    return-void
.end method
