.class public Lcom/yik/yak/ui/view/IdentityView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/ImageView;

.field protected b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yik/yak/ui/view/IdentityView;->a:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 54
    const v0, 0x7f0d01a5

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/IdentityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yik/yak/ui/view/IdentityView;->a:Landroid/widget/ImageView;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/view/IdentityView;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public b()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yik/yak/ui/view/IdentityView;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 62
    const v0, 0x7f0d01a6

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/view/IdentityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yik/yak/ui/view/IdentityView;->b:Landroid/widget/ImageView;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/view/IdentityView;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setUrlForBackground(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/IdentityView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yik/yak/ui/view/IdentityView;->a()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 46
    return-void
.end method

.method public setUrlForForeground(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/yik/yak/ui/view/IdentityView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yik/yak/ui/view/IdentityView;->b()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 50
    return-void
.end method
