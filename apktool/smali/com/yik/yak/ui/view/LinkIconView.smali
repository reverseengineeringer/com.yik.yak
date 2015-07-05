.class public Lcom/yik/yak/ui/view/LinkIconView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:LFj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    sget-object v0, LFj;->c:LFj;

    iput-object v0, p0, Lcom/yik/yak/ui/view/LinkIconView;->a:LFj;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    sget-object v0, LFj;->c:LFj;

    iput-object v0, p0, Lcom/yik/yak/ui/view/LinkIconView;->a:LFj;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    sget-object v0, LFj;->c:LFj;

    iput-object v0, p0, Lcom/yik/yak/ui/view/LinkIconView;->a:LFj;

    .line 33
    return-void
.end method


# virtual methods
.method public a()LFj;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yik/yak/ui/view/LinkIconView;->a:LFj;

    return-object v0
.end method

.method public setIconState(LFj;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yik/yak/ui/view/LinkIconView;->a:LFj;

    if-ne v0, p1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 48
    :cond_0
    sget-object v0, LFi;->a:[I

    invoke-virtual {p1}, LFj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_1
    iput-object p1, p0, Lcom/yik/yak/ui/view/LinkIconView;->a:LFj;

    goto :goto_0

    .line 50
    :pswitch_0
    const v0, 0x7f020119

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/LinkIconView;->setImageResource(I)V

    goto :goto_1

    .line 53
    :pswitch_1
    const v0, 0x7f02011a

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/LinkIconView;->setImageResource(I)V

    goto :goto_1

    .line 56
    :pswitch_2
    const v0, 0x7f02011b

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/LinkIconView;->setImageResource(I)V

    goto :goto_1

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
