.class public Luh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LuS;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(LuS;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LuS;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Luh;->a:LuS;

    .line 59
    iput-object p2, p0, Luh;->b:Ljava/util/List;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(LuS;Ljava/util/List;Lue;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Luh;-><init>(LuS;Ljava/util/List;)V

    return-void
.end method
