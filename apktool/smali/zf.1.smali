.class public interface abstract Lzf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lzf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lzg;

    invoke-direct {v0}, Lzg;-><init>()V

    sput-object v0, Lzf;->a:Lzf;

    return-void
.end method


# virtual methods
.method public abstract a(ILyJ;)V
.end method

.method public abstract a(ILJT;IZ)Z
.end method

.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "LyN;",
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
            "LyN;",
            ">;Z)Z"
        }
    .end annotation
.end method
