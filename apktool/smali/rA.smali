.class LrA;
.super Ljava/lang/Throwable;
.source "SourceFile"


# instance fields
.field final synthetic a:Lrz;

.field private b:I


# direct methods
.method public constructor <init>(Lrz;I)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, LrA;->a:Lrz;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 45
    iput p2, p0, LrA;->b:I

    .line 46
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, LrA;->b:I

    return v0
.end method
