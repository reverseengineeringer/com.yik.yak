.class public interface abstract Lzp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lzp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lzq;

    invoke-direct {v0}, Lzq;-><init>()V

    sput-object v0, Lzp;->a:Lzp;

    return-void
.end method


# virtual methods
.method public abstract a(ILyT;)V
.end method

.method public abstract a(ILKB;IZ)Z
.end method

.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "LyX;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "LyX;",
            ">;Z)Z"
        }
    .end annotation
.end method
