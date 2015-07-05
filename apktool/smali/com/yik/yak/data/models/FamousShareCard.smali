.class public Lcom/yik/yak/data/models/FamousShareCard;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCaption:Ljava/lang/String;

.field private mColor:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/yik/yak/data/models/FamousShareCard;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    iput-object p2, p0, Lcom/yik/yak/data/models/FamousShareCard;->mCaption:Ljava/lang/String;

    .line 11
    iput p3, p0, Lcom/yik/yak/data/models/FamousShareCard;->mColor:I

    .line 12
    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/yik/yak/data/models/FamousShareCard;->mColor:I

    return v0
.end method

.method public getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/yik/yak/data/models/FamousShareCard;->mCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yik/yak/data/models/FamousShareCard;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/yik/yak/data/models/FamousShareCard;->mColor:I

    .line 41
    return-void
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/yik/yak/data/models/FamousShareCard;->mCaption:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yik/yak/data/models/FamousShareCard;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    return-void
.end method
